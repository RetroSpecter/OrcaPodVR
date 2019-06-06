using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NoteManager : MonoBehaviour
{
    public NoteBubble[] notes;
    private NoteBubble activeNote;

    public string noteSequence;
    private int[] noteSequenceInternal;

    private void Start()
    {
        foreach(NoteBubble n in notes) {
            n.playNote += RegisterNote;
        }

        string[] split = noteSequence.Split(',');
        noteSequenceInternal = new int[split.Length];
        for (int i = 0; i < noteSequenceInternal.Length; i++) {
            noteSequenceInternal[i] = int.Parse(split[i]);
        }
    }

    public void RegisterNote(NoteBubble nb) {
        activeNote = nb;
        if (curValidateSequence == null) {
            curValidateSequence = validateNoteSequence(1);
            StartCoroutine(curValidateSequence);
        }
    }

    IEnumerator curValidateSequence; 
    public IEnumerator validateNoteSequence(float resetTime) {
        float t = 0;
        NoteBubble curNote = null;
        int note = 0;
        while (t < resetTime) {
            if (activeNote != null && curNote != activeNote) {              

                int index = -1;
                for (int i = 0; i < notes.Length; i++) {
                    if (activeNote.name.Equals(notes[i].name)) {
                        index = i;
                        break;
                    }
                }
                if (index == noteSequenceInternal[note]) {
                    note++;
                    t = 0;

                    if (note == noteSequenceInternal.Length) {
                        break;
                    }
                    curNote = activeNote;     
                } else {
                    break;
                }
            }

            if(activeNote == null)
                t += Time.deltaTime;

            yield return null;
        }
        print(note == noteSequenceInternal.Length);
        yield return new WaitForSeconds(1);
        curValidateSequence = null;
    }

    public void playbackSequence() { }

    private void OnDestroy()
    {
        foreach (NoteBubble n in notes) {
            n.playNote -= RegisterNote;
        }
    }
}